/** *******************************************************************************************************************
  Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.

  Licensed under the Apache License, Version 2.0 (the "License").
  You may not use this file except in compliance with the License.
  You may obtain a copy of the License at

      http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.
 ******************************************************************************************************************** */

import { TemplateThreatStatement } from '../../customTypes';
import { threatFieldTypeMapping, ThreatFieldTypes } from '../../customTypes/threatFieldTypes';
import threatFieldData from '../../data/threatFieldData';

const calculateFieldCombination = (statement: TemplateThreatStatement) => {
  let fieldCombination = 0;
  const filledField: string[] = [];
  Object.keys(threatFieldTypeMapping).forEach((key) => {
    const value = statement[threatFieldTypeMapping[key as ThreatFieldTypes]];
    if (value) {
      if (typeof value === 'string') {
        fieldCombination += threatFieldData[key].fieldId;
        filledField.push(key);
      } else if (Array.isArray(value) && value.length > 0) {
        fieldCombination += threatFieldData[key].fieldId;
        filledField.push(key);
      }
    }
  });

  return {
    fieldCombination,
    filledField,
  };
};

export default calculateFieldCombination;
